from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, Directory

Nudup_Py_V0_1_0 = CommandToolBuilder(tool="nudup.py", base_command=["nudup.py"], inputs=[ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="use paired end deduping with template. SAM/BAM\nalignment must contain paired end reads. Degenerate\nread pairs (alignments for one read of pair) will be\ndiscarded.")), ToolInput(tag="in_readfq_fastq_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="|READ.fq   FASTQ file containing the molecular tag sequence for\neach read name in the corresponding SAM/BAM file\n(required only for CASE 1 detailed above)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="prefix of output file paths for sorted BAMs (default\nwill create prefix.sorted.markdup.bam,\nprefix.sorted.dedup.bam, prefix_dup_log.txt)")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="position in index read where molecular tag sequence\nbegins. This should be a 1-based value that counts in\nfrom the 3' END of the read. (default = 6)")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="length of molecular tag sequence (default = 6)")), ToolInput(tag="in_directory_reading_writing", input_type=Directory(optional=True), prefix="-T", doc=InputDocumentation(doc="directory for reading and writing to temporary files\nand named pipes (default: /tmp)")), ToolInput(tag="in_old_sam_tools", input_type=Boolean(optional=True), prefix="--old-samtools", doc=InputDocumentation(doc="required for compatibility with samtools sort style in\nsamtools versions <=0.1.19")), ToolInput(tag="in_rmd_up_only", input_type=Boolean(optional=True), prefix="--rmdup-only", doc=InputDocumentation(doc="required for only outputting duplicates removed file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="prefix of output file paths for sorted BAMs (default\nwill create prefix.sorted.markdup.bam,\nprefix.sorted.dedup.bam, prefix_dup_log.txt)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nudup_Py_V0_1_0().translate("wdl", allow_empty_container=True)

