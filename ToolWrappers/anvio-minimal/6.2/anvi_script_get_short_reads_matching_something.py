from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Directory, Boolean

Anvi_Script_Get_Short_Reads_Matching_Something_V0_1_0 = CommandToolBuilder(tool="anvi_script_get_short_reads_matching_something", base_command=["anvi-script-get-short-reads-matching-something"], inputs=[ToolInput(tag="in_s", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="[-O PATH]")), ToolInput(tag="in_match_sequence", input_type=String(optional=True), prefix="--match-sequence", doc=InputDocumentation(doc="SEQUENCE\nShort sequence to look for..")), ToolInput(tag="in_min_remainder_length", input_type=Int(optional=True), prefix="--min-remainder-length", doc=InputDocumentation(doc="Minimum lenght of the remainder of the read after the\nmatch. If your short read is XXXMMMMMMYYYYYYYYYYYYYY,\nwhere M indicates nucleotides of matchhing sequence,\nmin remainder length is len(Y). Default is 60.")), ToolInput(tag="in_sample_name", input_type=String(optional=True), prefix="--sample-name", doc=InputDocumentation(doc="A short sample name (use a single word without spaces\nor fancy chars)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="Output directory for results to be stored. The default\nis the current working directory.")), ToolInput(tag="in_report_raw", input_type=Boolean(optional=True), prefix="--report-raw", doc=InputDocumentation(doc="Just report them raw. Don't bother trimming.")), ToolInput(tag="in_stop_after", input_type=Int(optional=True), prefix="--stop-after", doc=InputDocumentation(doc="Stop after X number of hits because who needs data.")), ToolInput(tag="in_fast_q_files", input_type=String(), position=0, doc=InputDocumentation(doc="One or more FASTQ formatted files"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory for results to be stored. The default\nis the current working directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Get_Short_Reads_Matching_Something_V0_1_0().translate("wdl", allow_empty_container=True)

