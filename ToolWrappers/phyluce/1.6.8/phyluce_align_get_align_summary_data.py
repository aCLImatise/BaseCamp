from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, File, Int

Phyluce_Align_Get_Align_Summary_Data_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_align_summary_data", base_command=["phyluce_align_get_align_summary_data"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing alignments to be summarized.\n(default: None)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format. (default: nexus)")), ToolInput(tag="in_show_tax_on_counts", input_type=Boolean(optional=True), prefix="--show-taxon-counts", doc=InputDocumentation(doc="Show the count of loci with X taxa. (default: False)")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use. (default: INFO)")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs. (default: None)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.\n(default: 1)")), ToolInput(tag="in_output_stats", input_type=File(optional=True), prefix="--output-stats", doc=InputDocumentation(doc="Output a CSV-formatted file of stats, by locus\n(default: None)\n"))], outputs=[ToolOutput(tag="out_output_stats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_stats", type_hint=File()), doc=OutputDocumentation(doc="Output a CSV-formatted file of stats, by locus\n(default: None)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Align_Summary_Data_V0_1_0().translate("wdl", allow_empty_container=True)

