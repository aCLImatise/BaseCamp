from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Smof_Sort_V0_1_0 = CommandToolBuilder(tool="smof_sort", base_command=["smof", "sort"], inputs=[ToolInput(tag="in_regex", input_type=String(optional=True), prefix="--regex", doc=InputDocumentation(doc="sort by single regex capture")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="reverse sort")), ToolInput(tag="in_numeric_sort", input_type=Boolean(optional=True), prefix="--numeric-sort", doc=InputDocumentation(doc="numeric sort")), ToolInput(tag="in_length_sort", input_type=Boolean(optional=True), prefix="--length-sort", doc=InputDocumentation(doc="sort by sequence length")), ToolInput(tag="in_random_sort", input_type=Boolean(optional=True), prefix="--random-sort", doc=InputDocumentation(doc="randomly sort sequences")), ToolInput(tag="in_key", input_type=Int(optional=True), prefix="--key", doc=InputDocumentation(doc="Key to sort on (column number or tag)")), ToolInput(tag="in_field_separator", input_type=String(optional=True), prefix="--field-separator", doc=InputDocumentation(doc="The field separator (default: '|')")), ToolInput(tag="in_pair_separator", input_type=String(optional=True), prefix="--pair-separator", doc=InputDocumentation(doc="The separator between a tag and value (default: '=')\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

