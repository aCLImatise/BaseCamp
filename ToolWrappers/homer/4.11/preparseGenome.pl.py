from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Preparsegenome_Pl_V0_1_0 = CommandToolBuilder(tool="preparseGenome.pl", base_command=["preparseGenome.pl"], inputs=[ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="-size", doc=InputDocumentation(doc="<#> (size of fragments to use for preparsing the genome)")), ToolInput(tag="in_mask", input_type=Boolean(optional=True), prefix="-mask", doc=InputDocumentation(doc="(mask repeats - i.e. lower-case bases)")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="-ref", doc=InputDocumentation(doc="(reference position file, default: [genome].tss)\nIf no reference file is given or found, random regions will be used\nTo force the use of random regions, use '-ref random'")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="<#> (size of window around ref positions to prepare, default=50000)")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="<#> (maximum number of preparesed fragments to create, default=2e6)")), ToolInput(tag="in_min_inc", input_type=Boolean(optional=True), prefix="-minInc", doc=InputDocumentation(doc="<#> (minimum size of region near ref pos to include, default=1000)")), ToolInput(tag="in_pre_parsed_dir", input_type=Directory(optional=True), prefix="-preparsedDir", doc=InputDocumentation(doc="(alternative directory to place the preparsed output files)")), ToolInput(tag="in_genome", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_pre_parsed_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_pre_parsed_dir", type_hint=File()), doc=OutputDocumentation(doc="(alternative directory to place the preparsed output files)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Preparsegenome_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

