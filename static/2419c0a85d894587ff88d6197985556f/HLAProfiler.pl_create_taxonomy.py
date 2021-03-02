from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hlaprofiler_Pl_Create_Taxonomy_V0_1_0 = CommandToolBuilder(tool="HLAProfiler.pl_create_taxonomy", base_command=["HLAProfiler.pl", "create_taxonomy"], inputs=[ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="-reference", doc=InputDocumentation(doc="|r    HLA reference fasta (required)")), ToolInput(tag="in_cwd", input_type=Boolean(optional=True), prefix="-cwd", doc=InputDocumentation(doc="File containing the names of common and well-documented alleles. This file can be blank but must be specified.(required)")), ToolInput(tag="in_output_dir", input_type=Boolean(optional=True), prefix="-output_dir", doc=InputDocumentation(doc="|od  parent directory of taxonomy (default:'.')")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="-log", doc=InputDocumentation(doc="|l          name of the prediction log file")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hlaprofiler_Pl_Create_Taxonomy_V0_1_0().translate("wdl", allow_empty_container=True)

