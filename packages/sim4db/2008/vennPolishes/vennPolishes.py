from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Vennpolishes_V0_1_0 = CommandToolBuilder(tool="vennPolishes", base_command=["vennPolishes"], inputs=[ToolInput(tag="in_there_numseqs_input", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="there are <num-seqs> in the input set")), ToolInput(tag="in_filter_matches_be_identitydefault", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="filter matches to be >= <min-ident> identity\ndefault = 95")), ToolInput(tag="in_filter_matches_be_mincover", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="filter matches to be >= <min-cover> coverage\ndefault = 50")), ToolInput(tag="in_dump_sequence_iids", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="dump the sequence IIDs in <class-id> to stdout")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="-plot", doc=InputDocumentation(doc="write a plot-able datafile of the venn diagram\nfor percent identity <min-idenit> to 100 (inclusive)\nand <min-cover> coverage.\n")), ToolInput(tag="in_given", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sets", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_sim_four", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_polishes", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vennpolishes_V0_1_0().translate("wdl", allow_empty_container=True)

