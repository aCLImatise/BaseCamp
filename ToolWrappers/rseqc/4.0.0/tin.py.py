from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Tin_Py_V0_1_0 = CommandToolBuilder(tool="tin.py", base_command=["tin.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input BAM file(s). '-i' takes these input: 1) a single\nBAM file. 2) ',' separated BAM files (no spaces\nallowed). 3) directory containing one or more bam\nfiles. 4) plain text file containing the path of one\nor more bam files (Each row is a BAM file path). All\nBAM files should be sorted and indexed using samtools.\n[required]")), ToolInput(tag="in_ref_gene", input_type=File(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in BED format. Must be strandard\n12-column BED file. [required]")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--minCov", doc=InputDocumentation(doc="Minimum number of read mapped to a transcript.\ndefault=10")), ToolInput(tag="in_sample_size", input_type=Int(optional=True), prefix="--sample-size", doc=InputDocumentation(doc="Number of equal-spaced nucleotide positions picked\nfrom mRNA. Note: if this number is larger than the\nlength of mRNA (L), it will be halved until it's\nsmaller than L. default=100")), ToolInput(tag="in_subtract_background", input_type=Boolean(optional=True), prefix="--subtract-background", doc=InputDocumentation(doc="Subtract background noise (estimated from intronic\nreads). Only use this option if there are substantial\nintronic reads.\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tin_Py_V0_1_0().translate("wdl")

