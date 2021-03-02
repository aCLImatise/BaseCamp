from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory, Boolean

Haphpipe_Pairwise_Align_V0_1_0 = CommandToolBuilder(tool="haphpipe_pairwise_align", base_command=["haphpipe", "pairwise_align"], inputs=[ToolInput(tag="in_amplicons_fa", input_type=String(optional=True), prefix="--amplicons_fa", doc=InputDocumentation(doc="Assembled amplicons (fasta)")), ToolInput(tag="in_ref_fa", input_type=File(optional=True), prefix="--ref_fa", doc=InputDocumentation(doc="Reference fasta file")), ToolInput(tag="in_ref_gtf", input_type=File(optional=True), prefix="--ref_gtf", doc=InputDocumentation(doc="GTF format file containing amplicon regions. Primary\nand alternate coding regions should be provided in the\nattribute field (for amino acid alignment).")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: .)")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep_tmp", doc=InputDocumentation(doc="Do not delete temporary directory (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Append console output to this file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print commands but do not run (default: False)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: .)")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Append console output to this file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Pairwise_Align_V0_1_0().translate("wdl", allow_empty_container=True)

