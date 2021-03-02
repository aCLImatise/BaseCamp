from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tsv2Bam_V0_1_0 = CommandToolBuilder(tool="tsv2bam", base_command=["tsv2bam"], inputs=[ToolInput(tag="in_in_dir", input_type=Boolean(optional=True), prefix="--in-dir", doc=InputDocumentation(doc=": input directory.")), ToolInput(tag="in_pop_map", input_type=Boolean(optional=True), prefix="--popmap", doc=InputDocumentation(doc=": population map.")), ToolInput(tag="in_sample", input_type=Boolean(optional=True), prefix="--sample", doc=InputDocumentation(doc=": name of one sample.")), ToolInput(tag="in_pe_reads_dir", input_type=Boolean(optional=True), prefix="--pe-reads-dir", doc=InputDocumentation(doc=": directory where to find the paired-end reads files (in fastq/fasta/bam (gz) format).")), ToolInput(tag="in_number_use_default", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": number of threads to use (default: 1)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tsv2Bam_V0_1_0().translate("wdl", allow_empty_container=True)

