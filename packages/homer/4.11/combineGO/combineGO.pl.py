from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Combinego_Pl_V0_1_0 = CommandToolBuilder(tool="combineGO.pl", base_command=["combineGO.pl"], inputs=[ToolInput(tag="in_filename_join_values", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="(Filename to join enrichment values from)")), ToolInput(tag="in_findmotifspl_output_directories", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="[directory2] ... (findMotifs.pl output directories to join)")), ToolInput(tag="in_top", input_type=Boolean(optional=True), prefix="-top", doc=InputDocumentation(doc="<#> (Only keep top # terms per directory, default: keep all)")), ToolInput(tag="in_column", input_type=Boolean(optional=True), prefix="-column", doc=InputDocumentation(doc="<#> (Column in files to join, default: 4)")), ToolInput(tag="in_ratio", input_type=Boolean(optional=True), prefix="-ratio", doc=InputDocumentation(doc="(return log2 ratio target/background if using motifs/knownResults.txt)")), ToolInput(tag="in_pseudo_fraction", input_type=Boolean(optional=True), prefix="-pseudoFraction", doc=InputDocumentation(doc="<#> (Default: 2%)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combinego_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

