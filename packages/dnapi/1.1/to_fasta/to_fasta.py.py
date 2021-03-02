from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

To_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="to_fasta.py", base_command=["to_fasta.py"], inputs=[ToolInput(tag="in_three", input_type=Int(optional=True), prefix="-3", doc=InputDocumentation(doc="3'adapter sequence")), ToolInput(tag="in_five", input_type=Int(optional=True), prefix="-5", doc=InputDocumentation(doc="5'adapter sequence")), ToolInput(tag="in_trim_five_p", input_type=Int(optional=True), prefix="--trim-5p", doc=InputDocumentation(doc="trim specified number of bases from 5'ends")), ToolInput(tag="in_trim_three_p", input_type=Int(optional=True), prefix="--trim-3p", doc=InputDocumentation(doc="trim specified number of bases from 3'ends")), ToolInput(tag="in_seed_five_p", input_type=Int(optional=True), prefix="--seed-5p", doc=InputDocumentation(doc="5' adapter match length in bp (default: 7)")), ToolInput(tag="in_seed_three_p", input_type=Int(optional=True), prefix="--seed-3p", doc=InputDocumentation(doc="3' adapter match length in bp (default: 7)")), ToolInput(tag="in_minimum_read_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="minimum read length in bp (default: 16)")), ToolInput(tag="in_maximum_read_length", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="maximum read length in bp (default: 36)")), ToolInput(tag="in_sensitive_adapter_search", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="sensitive adapter search with 1 mismatch (default: off)")), ToolInput(tag="in_only_print_reads", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="only print the reads with both 5' and 3' adapter matches")), ToolInput(tag="in_print_reads_specified", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="print all reads with and without adapter matches if the reads\nare in the range specified with '-m' and '-x'\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    To_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

