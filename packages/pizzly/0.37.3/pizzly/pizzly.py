from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Pizzly_V0_1_0 = CommandToolBuilder(tool="pizzly", base_command=["pizzly"], inputs=[ToolInput(tag="in_kmer_size_used", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer size used in kallisto")), ToolInput(tag="in_align_score", input_type=Int(optional=True), prefix="--align-score", doc=InputDocumentation(doc="Maximum number of mismatches allowed (default: 2)")), ToolInput(tag="in_insert_size", input_type=Int(optional=True), prefix="--insert-size", doc=InputDocumentation(doc="Maximum fragment size of library (default: 400)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Prefix for output files")), ToolInput(tag="in_gtf", input_type=String(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Annotation in GTF format")), ToolInput(tag="in_cache", input_type=File(optional=True), prefix="--cache", doc=InputDocumentation(doc="File for caching annotation (created if not present, otherwise\nreused from previous runs)")), ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Fasta reference")), ToolInput(tag="in_ignore_protein", input_type=Boolean(optional=True), prefix="--ignore-protein", doc=InputDocumentation(doc="Ignore any protein coding information in annotation"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pizzly_V0_1_0().translate("wdl", allow_empty_container=True)

