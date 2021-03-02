from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ecogrep_V0_1_0 = CommandToolBuilder(tool="ecogrep", base_command=["ecogrep"], inputs=[ToolInput(tag="in_compare_pattern_direct", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc=": [FIRST] : compare the given pattern with direct strand oligonucleotide")), ToolInput(tag="in_compare_pattern_reverse", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc=": [SECOND] : compare the given pattern with reverse strand oligonucleotide")), ToolInput(tag="in_atabase_containing_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": [D]atabase containing taxonomic information")), ToolInput(tag="in_rrors_max_error", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc=": [E]rrors : max error allowed in pattern match (option-1, -2 and -p) (0 by default)")), ToolInput(tag="in_attern_oligonucleotide_pattern", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": [P]attern : oligonucleotide pattern")), ToolInput(tag="in_gnore_subtree_given", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": [I]gnore subtree under given taxonomic id")), ToolInput(tag="in_estrict_search_subtree", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": [R]estrict search to subtree under given taxomic id")), ToolInput(tag="in_inert_sense_select", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": in[V]ert the sense of matching, to select non-matching lines."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ecogrep_V0_1_0().translate("wdl", allow_empty_container=True)

