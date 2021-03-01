from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory, File

Hp_Summary_Stats_V0_1_0 = CommandToolBuilder(tool="hp_summary_stats", base_command=["hp_summary_stats"], inputs=[ToolInput(tag="in_dir_list", input_type=String(optional=True), prefix="--dir_list", doc=InputDocumentation(doc="List of directories which include the required files,\none on each line")), ToolInput(tag="in_ph_list", input_type=String(optional=True), prefix="--ph_list", doc=InputDocumentation(doc="List of directories which include haplotype summary\nfiles, one on each line")), ToolInput(tag="in_amplicons", input_type=Boolean(optional=True), prefix="--amplicons", doc=InputDocumentation(doc="Amplicons used in assembly (default: False)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Name for log file (output)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print commands but do not run (default: False)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Name for log file (output)"))], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hp_Summary_Stats_V0_1_0().translate("wdl")

