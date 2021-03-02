from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Directory

Fastq_Sort_V0_1_0 = CommandToolBuilder(tool="fastq_sort", base_command=["fastq-sort"], inputs=[ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="sort in reverse (i.e., descending) order")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="sort alphabetically by read identifier")), ToolInput(tag="in_idn", input_type=Boolean(optional=True), prefix="--idn", doc=InputDocumentation(doc="sort alphanumerically by read identifier according to 'samtools sort -n'")), ToolInput(tag="in_seq", input_type=Boolean(optional=True), prefix="--seq", doc=InputDocumentation(doc="sort alphabetically by sequence")), ToolInput(tag="in_random", input_type=Boolean(optional=True), prefix="--random", doc=InputDocumentation(doc="randomly shuffle the sequences")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="[=SEED]  seed to use for random shuffle.")), ToolInput(tag="in_gc", input_type=Boolean(optional=True), prefix="--gc", doc=InputDocumentation(doc="sort by GC content")), ToolInput(tag="in_mean_qual", input_type=Boolean(optional=True), prefix="--mean-qual", doc=InputDocumentation(doc="sort by median quality score")), ToolInput(tag="in_buffer_size", input_type=Int(optional=True), prefix="--buffer-size", doc=InputDocumentation(doc="amount of memory to use for sorting")), ToolInput(tag="in_temporary_directory", input_type=Directory(optional=True), prefix="--temporary-directory", doc=InputDocumentation(doc="write temporary files here, instead of $TMPDIR, or /tmp"))], outputs=[], container="quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Sort_V0_1_0().translate("wdl")

