from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Capcpair2Bg_V0_1_0 = CommandToolBuilder(tool="capCpair2bg", base_command=["capCpair2bg"], inputs=[ToolInput(tag="in_pairfile_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="pairfile       is the input file name; can use this option more\nthan once to combine multiple targets into one")), ToolInput(tag="in_bgfile_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="bgfile         is the file name for the output bedGraph")), ToolInput(tag="in_targetname_name_target", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="targetname     is the name of the target")), ToolInput(tag="in_genomic_location_target", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="chrom:start-end  is the genomic location of the target site; can\nuse this option more than once if multiple pair\nfiles are specified.")), ToolInput(tag="in_inter_chrom", input_type=Boolean(optional=True), prefix="--interchrom", doc=InputDocumentation(doc="flag to specify interchromosomal interactions are present"))], outputs=[ToolOutput(tag="out_bgfile_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bgfile_file_name", type_hint=File()), doc=OutputDocumentation(doc="bgfile         is the file name for the output bedGraph"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capcpair2Bg_V0_1_0().translate("wdl", allow_empty_container=True)

