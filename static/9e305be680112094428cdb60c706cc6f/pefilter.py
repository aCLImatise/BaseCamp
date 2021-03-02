from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Pefilter_V0_1_0 = CommandToolBuilder(tool="pefilter", base_command=["pefilter"], inputs=[ToolInput(tag="in_arg_input_bam", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --infile ] arg          Input BAM file. It should be indexed.")), ToolInput(tag="in_arg_output_bam", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg         Output BAM file. To save the filtered BAM file.")), ToolInput(tag="in_library_preparation_protocol", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --protocol ]            Library preparation protocol. 0: traditional\nlibrary protocol by shotgun approach; 1:\ntraditional library protocol by Nextera\ntransposase approach; 2: Pico. Default:\ntraditional protocol by shotgun.")), ToolInput(tag="in_report_pe_tag", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --statsonly ]           Report PE tag statistics only but not generate\nfiltered BAM file. The statitics will show in\nstdout.")), ToolInput(tag="in_arg_number_threads", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --numthreads ] arg (=1) Number of threads. Ensure enough memory for many\nthreads. One thread may occupy up to 5GB memory\nfor a 50GB BAM file. Default: 1.")), ToolInput(tag="in_arg_valid_tag", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --validtag ] arg        Valid tag pair in the format as `tag1,tag2` for\ntwo ends. `N` means mapping not found. Multiple\ntag pairs can be specified. For example, `-d\n++,+- -d -+,--`"))], outputs=[ToolOutput(tag="out_arg_output_bam", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_bam", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg         Output BAM file. To save the filtered BAM file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pefilter_V0_1_0().translate("wdl", allow_empty_container=True)

