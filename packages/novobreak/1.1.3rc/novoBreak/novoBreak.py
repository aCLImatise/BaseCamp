from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Novobreak_V0_1_0 = CommandToolBuilder(tool="novoBreak", base_command=["novoBreak"], inputs=[ToolInput(tag="in_tumor_bam_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Tumor bam file")), ToolInput(tag="in_normal_bam_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Normal bam file")), ToolInput(tag="in_reference_file_fasta", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="Reference file in fasta format")), ToolInput(tag="in_kmer_size_", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Kmer size, <=31 [31]")), ToolInput(tag="in_output_kmer", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output kmer")), ToolInput(tag="in_output_germline_events", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="Output germline events [0]")), ToolInput(tag="in_minimum_kmer_count", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum kmer count regarded as novo kmers [3]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novobreak_V0_1_0().translate("wdl", allow_empty_container=True)

