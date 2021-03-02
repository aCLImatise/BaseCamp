from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, Boolean

Haphpipe_Ec_Reads_V0_1_0 = CommandToolBuilder(tool="haphpipe_ec_reads", base_command=["haphpipe", "ec_reads"], inputs=[ToolInput(tag="in_fq_one", input_type=Int(optional=True), prefix="--fq1", doc=InputDocumentation(doc="Fastq file with read 1")), ToolInput(tag="in_fq_two", input_type=Int(optional=True), prefix="--fq2", doc=InputDocumentation(doc="Fastq file with read 2")), ToolInput(tag="in_f_qu", input_type=File(optional=True), prefix="--fqU", doc=InputDocumentation(doc="Fastq file with unpaired reads")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_n_cpu", input_type=Int(optional=True), prefix="--ncpu", doc=InputDocumentation(doc="Number of CPU to use (default: 1)")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep_tmp", doc=InputDocumentation(doc="Keep temporary directory (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Append console output to this file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print commands but do not run (default: False)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Append console output to this file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Ec_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

