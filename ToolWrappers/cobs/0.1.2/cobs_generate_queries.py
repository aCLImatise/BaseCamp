from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cobs_Generate_Queries_V0_1_0 = CommandToolBuilder(tool="cobs_generate_queries", base_command=["cobs", "generate-queries"], inputs=[ToolInput(tag="in_file_type", input_type=Boolean(optional=True), prefix="--file-type", doc=InputDocumentation(doc="'list' to read a file list, or filter documents by file\ntype (any, text, cortex, fasta, fastq, etc)")), ToolInput(tag="in_negative", input_type=Boolean(optional=True), prefix="--negative", doc=InputDocumentation(doc="construct this number of random non-existing negative\nqueries, default: 0")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="output file path")), ToolInput(tag="in_positive", input_type=Boolean(optional=True), prefix="--positive", doc=InputDocumentation(doc="pick this number of existing positive queries, default: 0")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="random seed")), ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="--size", doc=InputDocumentation(doc="extend positive terms with random data to this size")), ToolInput(tag="in_term_size", input_type=Boolean(optional=True), prefix="--term-size", doc=InputDocumentation(doc="term size (k-mer size), default: 31")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use, default: max cores")), ToolInput(tag="in_true_negative", input_type=Boolean(optional=True), prefix="--true-negative", doc=InputDocumentation(doc="check that negative queries actually are not in the\ndocuments (slow)\n")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="path to base documents"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="output file path"))], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Generate_Queries_V0_1_0().translate("wdl")

