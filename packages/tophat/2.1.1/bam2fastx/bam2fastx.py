from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bam2Fastx_V0_1_0 = CommandToolBuilder(tool="bam2fastx", base_command=["bam2fastx"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="convert all reads (mapped and unmapped)\n(but discarding those flagged as QC failed, unless -Q)")), ToolInput(tag="in_paired_reads_expected", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="paired reads are expected and converted into two output\nfiles (see <outfname> comments below)")), ToolInput(tag="in_convert_unmapped_reads", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="convert unmapped reads even when flagged as QC failed")), ToolInput(tag="in_map_ed_only", input_type=Boolean(optional=True), prefix="--maped-only", doc=InputDocumentation(doc="convert only mapped reads")), ToolInput(tag="in_p_append_read", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="for -P, append  /1 and /2 suffixes to read names")), ToolInput(tag="in_ignore_quality_values", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="ignore the original quality values (OQ tag) and write the\ncurrent quality values (default is to use OQ data if found)")), ToolInput(tag="in_color", input_type=Boolean(optional=True), prefix="--color", doc=InputDocumentation(doc="reads are in ABI SOLiD color format")), ToolInput(tag="in_sam", input_type=Boolean(optional=True), prefix="--sam", doc=InputDocumentation(doc="input is a SAM text file (default: BAM input expected)")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="output FASTA records, not FASTQ (discard quality values)")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name or template (see below)"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name or template (see below)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fastx_V0_1_0().translate("wdl", allow_empty_container=True)

