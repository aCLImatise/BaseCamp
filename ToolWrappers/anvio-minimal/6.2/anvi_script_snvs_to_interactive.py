from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, String

Anvi_Script_Snvs_To_Interactive_V0_1_0 = CommandToolBuilder(tool="anvi_script_snvs_to_interactive", base_command=["anvi-script-snvs-to-interactive"], inputs=[ToolInput(tag="in_min_departure_from_consensus", input_type=Float(optional=True), prefix="--min-departure-from-consensus", doc=InputDocumentation(doc="Minimum departure from consensus at a given variable\nnucleotide position. The default is 0.00.")), ToolInput(tag="in_max_departure_from_consensus", input_type=Float(optional=True), prefix="--max-departure-from-consensus", doc=InputDocumentation(doc="Maximum departure from consensus at a given variable\nnucleotide position. The default is 1.00.")), ToolInput(tag="in_min_departure_from_reference", input_type=Float(optional=True), prefix="--min-departure-from-reference", doc=InputDocumentation(doc="Minimum departure from consensus at a given variable\nnucleotide position. The default is 0.00.")), ToolInput(tag="in_max_departure_from_reference", input_type=Float(optional=True), prefix="--max-departure-from-reference", doc=InputDocumentation(doc="Maximum departure from consensus at a given variable\nnucleotide position. The default is 1.00.")), ToolInput(tag="in_display_dep_from_reference", input_type=Boolean(optional=True), prefix="--display-dep-from-reference", doc=InputDocumentation(doc="By default this program will generate a matrix file\nthat displays departure from consensus values. This\nflag will switch to departure from reference.")), ToolInput(tag="in_only_in_genes", input_type=Boolean(optional=True), prefix="--only-in-genes", doc=InputDocumentation(doc="With this flag you will ignore SNVs in non-coding")), ToolInput(tag="in_just_do_it", input_type=Boolean(optional=True), prefix="--just-do-it", doc=InputDocumentation(doc="Don't bother me with questions or warnings, just do")), ToolInput(tag="in_profile", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:")), ToolInput(tag="in_regions_dot", input_type=String(), position=2, doc=InputDocumentation(doc="--random INTEGER      Use this parameter to randomly subset your data. If")), ToolInput(tag="in_it_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-o DIR_PATH, --output-dir DIR_PATH"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Snvs_To_Interactive_V0_1_0().translate("wdl", allow_empty_container=True)

