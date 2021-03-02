from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Repeatproteinmask_V0_1_0 = CommandToolBuilder(tool="RepeatProteinMask", base_command=["RepeatProteinMask"], inputs=[ToolInput(tag="in_engine", input_type=String(optional=True), prefix="-engine", doc=InputDocumentation(doc="|abblast|wublast\nUse the provided search engine to run the blastx runs.")), ToolInput(tag="in_p_value", input_type=Boolean(optional=True), prefix="-pvalue", doc=InputDocumentation(doc="#\nThe threshold for accepting matches. Matches must hava a pvalue less\nthan this number. Default is *NOT* to threshold.")), ToolInput(tag="in_min_score", input_type=Boolean(optional=True), prefix="-minscore", doc=InputDocumentation(doc="#\nThreshold on minscore. Note no default is added. So all hits will be\nreturned unless a minscore is used.")), ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="#\nThe wordsize to use with the blastx search. Default is 3")), ToolInput(tag="in_query_stat_len", input_type=Boolean(optional=True), prefix="-querystatlen", doc=InputDocumentation(doc="#\nThe effective length of the query to use in statistical\ncalculations.")), ToolInput(tag="in_max_aa_dist", input_type=Boolean(optional=True), prefix="-maxaadist", doc=InputDocumentation(doc="#\nThe maximum distance to consider two blastx hits as the same (and\nthus contributing to Sum P scores). Default is 333.")), ToolInput(tag="in_no_low_simple", input_type=Boolean(optional=True), prefix="-noLowSimple", doc=InputDocumentation(doc="Turns off masking/annotating of low complexity and simple repeats in\nthe final output. Low complexity and simple repeat analysis will\nstill occur prior to looking for matches to the RepeatPep database.\nDetailed help")), ToolInput(tag="in_repeat_modeler", input_type=String(), position=0, doc=InputDocumentation(doc="COPYRIGHT"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repeatproteinmask_V0_1_0().translate("wdl", allow_empty_container=True)

