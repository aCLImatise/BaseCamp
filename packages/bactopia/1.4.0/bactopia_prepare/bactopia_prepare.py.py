from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bactopia_Prepare_Py_V0_1_0 = CommandToolBuilder(tool="bactopia_prepare.py", base_command=["bactopia-prepare.py"], inputs=[ToolInput(tag="in_fast_q_ext", input_type=String(optional=True), prefix="--fastq_ext", doc=InputDocumentation(doc="Extension of the FASTQs. Default: .fastq.gz")), ToolInput(tag="in_assembly_ext", input_type=String(optional=True), prefix="--assembly_ext", doc=InputDocumentation(doc="Extension of the FASTA assemblies. Default: .fna.gz")), ToolInput(tag="in_fast_q_seperator", input_type=String(optional=True), prefix="--fastq_seperator", doc=InputDocumentation(doc="Split FASTQ name on the last occurrence of the\nseparator. Default: _")), ToolInput(tag="in_fast_q_pattern", input_type=String(optional=True), prefix="--fastq_pattern", doc=InputDocumentation(doc="Glob pattern to match FASTQs. Default: *.fastq.gz")), ToolInput(tag="in_assembly_pattern", input_type=String(optional=True), prefix="--assembly_pattern", doc=InputDocumentation(doc="Glob pattern to match assembly FASTAs. Default:\n*.fna.gz")), ToolInput(tag="in_long_reads", input_type=Boolean(optional=True), prefix="--long_reads", doc=InputDocumentation(doc="Single-end reads should be treated as long reads")), ToolInput(tag="in_bac_topia", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prepare", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_Prepare_Py_V0_1_0().translate("wdl", allow_empty_container=True)

