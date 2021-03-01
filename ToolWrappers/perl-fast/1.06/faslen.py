from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Faslen_V0_1_0 = CommandToolBuilder(tool="faslen", base_command=["faslen"], inputs=[ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="--table", doc=InputDocumentation(doc="Output data in a table to standard output. By default, length\ndata is annotated into descriptions.")), ToolInput(tag="in_join", input_type=Boolean(optional=True), prefix="--join", doc=InputDocumentation(doc="=[string]\nUse [string] to append length data in descriptions. Use with\nargument '\t' to indicate a tab-character.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Print the manual page and exit.")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="Creates, or appends to, a generic FAST logfile in the current\nworking directory. The logfile records date/time of execution,\nfull command with options and arguments, and an optional\ncomment.")), ToolInput(tag="in_use_name_default", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="[string], --logname=[string]\nUse [string] as the name of the logfile. Default is\n'FAST.log.txt'.")), ToolInput(tag="in_include_comment_logfile", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="[string], --comment=[string]\nInclude comment [string] in logfile. No comment is saved by\ndefault.")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="=[format]\nUse alternative format for input. See man page for 'faslen' for\nallowed formats. This is for convenience; the FAST tools are\ndesigned to exchange data in Fasta format, and 'fasta' is the\ndefault format for this tool.")), ToolInput(tag="in_specify_type_sequence", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[dna|rna|protein], --moltype=[dna|rna|protein]\nSpecify the type of sequence on input (should not be needed in\nmost cases, but sometimes Bioperl cannot guess and complains\nwhen processing data).")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="use fastq format as input and output.\n"))], outputs=[], container="quay.io/biocontainers/perl-fast:1.06--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Faslen_V0_1_0().translate("wdl")

