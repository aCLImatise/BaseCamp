from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fasrc_V0_1_0 = CommandToolBuilder(tool="fasrc", base_command=["fasrc"], inputs=[ToolInput(tag="in_no_brand", input_type=Boolean(optional=True), prefix="--nobrand", doc=InputDocumentation(doc="This option will not append -rc to the end of the identifiers.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Print the manual page and exit.")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="Creates, or appends to, a generic FAST logfile in the current\nworking directory. The logfile records date/time of execution,\nfull command with options and arguments, and an optional\ncomment.")), ToolInput(tag="in_use_name_default", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="[string], --logname=[string]\nUse [string] as the name of the logfile. Default is\n'FAST.log.txt'.")), ToolInput(tag="in_include_comment_logfile", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="[string], --comment=[string]\nInclude comment [string] in logfile. No comment is saved by\ndefault.")), ToolInput(tag="in_mol_type", input_type=Boolean(optional=True), prefix="--moltype", doc=InputDocumentation(doc="=[dna|rna|protein]\nSpecify the type of sequence on input (should not be needed in\nmost cases, but sometimes Bioperl cannot guess and complains\nwhen processing data).")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="use fastq format as input and output.\n"))], outputs=[], container="quay.io/biocontainers/perl-fast:1.06--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasrc_V0_1_0().translate("wdl")

