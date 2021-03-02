from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Whamg_V0_1_0 = CommandToolBuilder(tool="whamg", base_command=["whamg"], inputs=[ToolInput(tag="in_string_list_include", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="<STRING>  A list of seqids to include or exclude while\nsampling insert and depth.  For humans you should\nuse the standard chromosomes 1,2,3...X,Y.")), ToolInput(tag="in_string_comma_separated", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="<STRING>  Comma separated list of bam files or a file with\none bam (full path) per line.")), ToolInput(tag="in_string_reference_genome", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="<STRING>  The reference genome (indexed fasta).")), ToolInput(tag="in_flag_exits_program", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<FLAG>    Exits the program after the stats are\ngathered. [false]")), ToolInput(tag="in_string_file_write", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="<STRING>  File to write graph to (very large output). [false]")), ToolInput(tag="in_string_region_seqidstartend", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<STRING>  Region in format: seqid:start-end [whole genome]")), ToolInput(tag="in_int_mapping_quality", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="<INT>     Mapping quality filter [20].")), ToolInput(tag="in_string_split_read", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<STRING>  non standard split read tag [SA]")), ToolInput(tag="in_flag_sample_reads", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="<FLAG>    Sample reads until success. [false]")), ToolInput(tag="in_int_minimum_number", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<INT>     Minimum number of matching bases (both reads).[100]"))], outputs=[ToolOutput(tag="out_string_file_write", output_type=File(optional=True), selector=InputSelector(input_to_select="in_string_file_write", type_hint=File()), doc=OutputDocumentation(doc="<STRING>  File to write graph to (very large output). [false]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Whamg_V0_1_0().translate("wdl", allow_empty_container=True)

