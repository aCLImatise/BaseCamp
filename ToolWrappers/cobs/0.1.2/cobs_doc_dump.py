from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cobs_Doc_Dump_V0_1_0 = CommandToolBuilder(tool="cobs_doc_dump", base_command=["cobs", "doc-dump"], inputs=[ToolInput(tag="in_file_type", input_type=Boolean(optional=True), prefix="--file-type", doc=InputDocumentation(doc="'list' to read a file list, or filter documents by\nfile type (any, text, cortex, fasta, fastq, etc)")), ToolInput(tag="in_no_canonicalize", input_type=Boolean(optional=True), prefix="--no-canonicalize", doc=InputDocumentation(doc="don't canonicalize DNA k-mers, default: false")), ToolInput(tag="in_term_size", input_type=Boolean(optional=True), prefix="--term-size", doc=InputDocumentation(doc="term size (k-mer size), default: 31")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="path to documents to dump"))], outputs=[], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Doc_Dump_V0_1_0().translate("wdl")

