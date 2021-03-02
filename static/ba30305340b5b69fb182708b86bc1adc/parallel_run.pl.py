from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parallel_Run_Pl_V0_1_0 = CommandToolBuilder(tool="parallel_run.pl", base_command=["parallel_run.pl"], inputs=[ToolInput(tag="in_file_directory", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="File directory")), ToolInput(tag="in_program_rundefault_mafft", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="program to run\ndefault: mafft")), ToolInput(tag="in_number_of_threads", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_muscle", input_type=String(optional=True), prefix="-muscle", doc=InputDocumentation(doc="muscle options\ndefault: '-diags'\ntype 'muscle' to see additional muscle options")), ToolInput(tag="in_translate", input_type=Boolean(optional=True), prefix="-translate", doc=InputDocumentation(doc=":  Translate DNA to amino acid")), ToolInput(tag="in_one_line", input_type=Boolean(optional=True), prefix="-oneline", doc=InputDocumentation(doc=":     Write multi-line fasta sequences to one line")), ToolInput(tag="in_pal_two_nal", input_type=Boolean(optional=True), prefix="-pal2nal", doc=InputDocumentation(doc=":    Convert amino acid alignment to codon alignment, needs DNA fasta file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_Run_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

