from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Any2Fasta_V0_1_0 = CommandToolBuilder(tool="any2fasta", base_command=["any2fasta"], inputs=[ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version and exit")), ToolInput(tag="in_output_running_errors", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="No output while running, only errors")), ToolInput(tag="in_replace_ambiguous_letters", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Replace ambiguous IUPAC letters with 'N'")), ToolInput(tag="in_lowercase_the_sequence", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Lowercase the sequence")), ToolInput(tag="in_uppercase_the_sequence", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Uppercase the sequence")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Any2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

