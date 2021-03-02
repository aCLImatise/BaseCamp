from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, Boolean

Diego_Py_V0_1_0 = CommandToolBuilder(tool="diego.py", base_command=["diego.py"], inputs=[ToolInput(tag="in_table", input_type=String(optional=True), prefix="--table", doc=InputDocumentation(doc="table of splice junction supports per sample with gene\ninformation (created with pre_std.py, pre_star.py or\npre_segemehl.py)")), ToolInput(tag="in_list", input_type=String(optional=True), prefix="--list", doc=InputDocumentation(doc="condition to sample relation in the format: condition\ntab-delimiter sampleName (you can specify a subset of\nthe samples included in the table, however the\nsampleName has to be the same as used in table) (you\ncan specify a label in the third column that is used\n(if present) when the clustering mode is executed)")), ToolInput(tag="in_base_condition", input_type=String(optional=True), prefix="--base_condition", doc=InputDocumentation(doc="specify base condition (direction of change between\nthe two conditions)")), ToolInput(tag="in_min_supp", input_type=Int(optional=True), prefix="--minsupp", doc=InputDocumentation(doc="min support per splice site (at least -d samples have\nto show this min support)(default:10)")), ToolInput(tag="in_min_samples", input_type=Int(optional=True), prefix="--minsamples", doc=InputDocumentation(doc="min amount of samples showing in at least one of the\njunctions the min supp (default:3)")), ToolInput(tag="in_significance_threshold", input_type=Float(optional=True), prefix="--significanceThreshold", doc=InputDocumentation(doc="significance level alpha (default 0.01)")), ToolInput(tag="in_fold_change_threshold", input_type=Float(optional=True), prefix="--foldchangeThreshold", doc=InputDocumentation(doc="abundance change threshold (default 1.0)")), ToolInput(tag="in_cluster", input_type=Boolean(optional=True), prefix="--cluster", doc=InputDocumentation(doc="provide -e if clustering should be performed")), ToolInput(tag="in_den_do_gram", input_type=String(optional=True), prefix="--dendogram", doc=InputDocumentation(doc="prefix specifying the dendogram plot")), ToolInput(tag="in_random", input_type=Boolean(optional=True), prefix="--random", doc=InputDocumentation(doc="provide -r if random seed should be used (not\ndeterministic mode)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Diego_Py_V0_1_0().translate("wdl", allow_empty_container=True)

