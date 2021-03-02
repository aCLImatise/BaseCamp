from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Pbcstat_V0_1_0 = CommandToolBuilder(tool="pbcstat", base_command=["pbcstat"], inputs=[ToolInput(tag="in_int_maximum_coverage", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="INT      maximum coverage [500]")), ToolInput(tag="in_float_minimum_mapping", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="FLOAT    minimum mapping length ratio [0]")), ToolInput(tag="in_int_minimum_mapping", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="INT      minimum mapping quality [-1]")), ToolInput(tag="in_int_flanking_space", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="INT      flanking space [0]")), ToolInput(tag="in_bool_only_use", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="BOOL     only use primary alignments [TRUE]")), ToolInput(tag="in_str_output_directory", input_type=Directory(optional=True), prefix="-O", doc=InputDocumentation(doc="STR      output directory [.]")), ToolInput(tag="in_aa_pb", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_paf_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_str_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_str_output_directory", type_hint=File()), doc=OutputDocumentation(doc="STR      output directory [.]"))], container="quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbcstat_V0_1_0().translate("wdl")

