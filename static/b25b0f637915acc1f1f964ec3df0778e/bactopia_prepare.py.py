from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Bactopia_Prepare_Py_V0_1_0 = CommandToolBuilder(tool="bactopia_prepare.py", base_command=["bactopia-prepare.py"], inputs=[ToolInput(tag="in_fast_q_ext", input_type=String(optional=True), prefix="--fastq_ext", doc=InputDocumentation(doc="Extension of the FASTQs. Default: .fastq.gz")), ToolInput(tag="in_assembly_ext", input_type=String(optional=True), prefix="--assembly_ext", doc=InputDocumentation(doc="Extension of the FASTA assemblies. Default: .fna.gz")), ToolInput(tag="in_fast_q_seperator", input_type=String(optional=True), prefix="--fastq_seperator", doc=InputDocumentation(doc="Split FASTQ name on the last occurrence of the\nseparator. Default: _")), ToolInput(tag="in_fast_q_pattern", input_type=String(optional=True), prefix="--fastq_pattern", doc=InputDocumentation(doc="Glob pattern to match FASTQs. Default: *.fastq.gz")), ToolInput(tag="in_pe_one_pattern", input_type=Int(optional=True), prefix="--pe1_pattern", doc=InputDocumentation(doc="Designates difference first set of paired-end reads.\nDefault: ([Aa]|[Rr]1) (R1, r1, 1, A, a)")), ToolInput(tag="in_pe_two_pattern", input_type=Int(optional=True), prefix="--pe2_pattern", doc=InputDocumentation(doc="Designates difference second set of paired-end reads.\nDefault: ([Bb]|[Rr]2) (R2, r2, 2, AB b)")), ToolInput(tag="in_assembly_pattern", input_type=String(optional=True), prefix="--assembly_pattern", doc=InputDocumentation(doc="Glob pattern to match assembly FASTAs. Default:\n*.fna.gz")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Directories will be traversed recursively")), ToolInput(tag="in_long_reads", input_type=Boolean(optional=True), prefix="--long_reads", doc=InputDocumentation(doc="Single-end reads should be treated as long reads")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="Flag samples with multiple read sets to be merged by")), ToolInput(tag="in_bac_topia", input_type=String(), position=0, doc=InputDocumentation(doc="--prefix STR          Replace the absolute path with a given string."))], outputs=[], container="quay.io/biocontainers/bactopia:1.6.4--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_Prepare_Py_V0_1_0().translate("wdl")

