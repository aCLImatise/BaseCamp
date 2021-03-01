from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Directory, Boolean

Haphpipe_Predict_Haplo_V0_1_0 = CommandToolBuilder(tool="haphpipe_predict_haplo", base_command=["haphpipe", "predict_haplo"], inputs=[ToolInput(tag="in_fq_one", input_type=Int(optional=True), prefix="--fq1", doc=InputDocumentation(doc="Fastq file with read 1")), ToolInput(tag="in_fq_two", input_type=Int(optional=True), prefix="--fq2", doc=InputDocumentation(doc="Fastq file with read 2")), ToolInput(tag="in_ref_fa", input_type=String(optional=True), prefix="--ref_fa", doc=InputDocumentation(doc="Reference sequence used to align reads (fasta)")), ToolInput(tag="in_region_txt", input_type=File(optional=True), prefix="--region_txt", doc=InputDocumentation(doc="File with regions to perform haplotype reconstruction.\nRegions should be specified using the samtools region\nspecification format: RNAME[:STARTPOS[-ENDPOS]]")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: .)")), ToolInput(tag="in_min_read_length", input_type=Int(optional=True), prefix="--min_readlength", doc=InputDocumentation(doc="Minimum readlength passed to PredictHaplo (default:\n36)")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep_tmp", doc=InputDocumentation(doc="Do not delete temporary directory (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Append console output to this file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print commands but do not run (default: False)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: .)")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Append console output to this file"))], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Predict_Haplo_V0_1_0().translate("wdl")

