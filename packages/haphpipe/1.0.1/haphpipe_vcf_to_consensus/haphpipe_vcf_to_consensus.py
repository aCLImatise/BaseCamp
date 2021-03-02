from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Float, Boolean

Haphpipe_Vcf_To_Consensus_V0_1_0 = CommandToolBuilder(tool="haphpipe_vcf_to_consensus", base_command=["haphpipe", "vcf_to_consensus"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="VCF file (created with all sites).")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: .)")), ToolInput(tag="in_samp_idx", input_type=Int(optional=True), prefix="--sampidx", doc=InputDocumentation(doc="Index for sample if multi-sample VCF (default: 0)")), ToolInput(tag="in_min_dp", input_type=Int(optional=True), prefix="--min_dp", doc=InputDocumentation(doc="Minimum depth to call site (default: 5)")), ToolInput(tag="in_major", input_type=Float(optional=True), prefix="--major", doc=InputDocumentation(doc="Allele fraction to make unambiguous call (default: 0.5)")), ToolInput(tag="in_minor", input_type=Float(optional=True), prefix="--minor", doc=InputDocumentation(doc="Allele fraction to make ambiguous call (default: 0.2)")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep_tmp", doc=InputDocumentation(doc="Do not delete temporary directory (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Append console output to this file"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: .)")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Append console output to this file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Vcf_To_Consensus_V0_1_0().translate("wdl", allow_empty_container=True)

