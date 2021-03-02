from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pullseq_V0_1_0 = CommandToolBuilder(tool="pullseq", base_command=["pullseq"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc=",       Input fasta/fastq file (required)")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="--names", doc=InputDocumentation(doc=",       File of header id names to search for")), ToolInput(tag="in_names_stdin", input_type=Boolean(optional=True), prefix="--names_stdin", doc=InputDocumentation(doc=", Use STDIN for header id names")), ToolInput(tag="in_regex", input_type=Boolean(optional=True), prefix="--regex", doc=InputDocumentation(doc=",       Regular expression to match (PERL compatible; always case-insensitive)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--min", doc=InputDocumentation(doc=",         Minimum sequence length")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="--max", doc=InputDocumentation(doc=",         Maximum sequence length")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="--length", doc=InputDocumentation(doc=",      Sequence characters per line (default 50)")), ToolInput(tag="in_convert", input_type=Boolean(optional=True), prefix="--convert", doc=InputDocumentation(doc=",     Convert input to fastq/fasta (e.g. if input is fastq, output will be fasta)")), ToolInput(tag="in_quality", input_type=Boolean(optional=True), prefix="--quality", doc=InputDocumentation(doc=",     ASCII code to use for fasta->fastq quality conversions")), ToolInput(tag="in_excluded", input_type=Boolean(optional=True), prefix="--excluded", doc=InputDocumentation(doc=",    Exclude the header id names in the list (-n)")), ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc=",       Just count the possible output, but don't write it")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=",     Print extra details during the run")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_names_to_select_from_stdin", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pullseq_V0_1_0().translate("wdl", allow_empty_container=True)

