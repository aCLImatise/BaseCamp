from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Compare_Features_V0_1_0 = CommandToolBuilder(tool="rsat_compare_features", base_command=["rsat", "compare-features"], inputs=[ToolInput(tag="in_files", input_type=String(optional=True), prefix="-files", doc=InputDocumentation(doc="considered as input files.")), ToolInput(tag="in_compare_features", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_negative_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mOUTPUT TYPES[0m")), ToolInput(tag="in_inter_len", input_type=String(), position=0, doc=InputDocumentation(doc="Length (in residues) of the intersection between two features.")), ToolInput(tag="in_inter_cov", input_type=String(), position=1, doc=InputDocumentation(doc="Coverage of the intersection between two features. The coverage\n(inter_cov) is defined as\ninter_cov = inter_len / inter_pair\nwhere inter_len is the length of the intersection, pair_len is\nthe total length covered by the pair of intersecting features.")), ToolInput(tag="in_feature_map", input_type=String(), position=0, doc=InputDocumentation(doc="convert-features")), ToolInput(tag="in_all_coordinates", input_type=String(), position=0, doc=InputDocumentation(doc="Add columns with the coordinates of feature from f1 and f2 when\nthere is an intersection. If features belong to set f2.not.f1,\nindicate NA in the f1 columns (and reciprocally).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Compare_Features_V0_1_0().translate("wdl", allow_empty_container=True)

