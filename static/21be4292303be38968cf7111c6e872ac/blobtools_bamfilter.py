from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Blobtools_Bamfilter_V0_1_0 = CommandToolBuilder(tool="blobtools_bamfilter", base_command=["blobtools", "bamfilter"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file (sorted by name)")), ToolInput(tag="in_include", input_type=File(optional=True), prefix="--include", doc=InputDocumentation(doc="List of contigs whose reads are included\n- writes FASTAs of pairs where at least\none read maps sequences in list\n(InUn.fq, InIn.fq, ExIn.fq)")), ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="--exclude", doc=InputDocumentation(doc="List of contigs whose reads are excluded (outputs reads that do not map to sequences in list)\n- writes FASTAs of pairs where at least\none read does not maps to sequences in list\n(InUn.fq, InIn.fq, ExIn.fq)")), ToolInput(tag="in_exclude_unmapped", input_type=Boolean(optional=True), prefix="--exclude_unmapped", doc=InputDocumentation(doc="Include pairs where both reads are unmapped")), ToolInput(tag="in_non_interleaved", input_type=Boolean(optional=True), prefix="--noninterleaved", doc=InputDocumentation(doc="Use if fw and rev reads should be in separate files")), ToolInput(tag="in_read_format", input_type=String(optional=True), prefix="--read_format", doc=InputDocumentation(doc="FASTQ = fq, FASTA = fa [default: fa]")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Output prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blobtools_Bamfilter_V0_1_0().translate("wdl", allow_empty_container=True)

