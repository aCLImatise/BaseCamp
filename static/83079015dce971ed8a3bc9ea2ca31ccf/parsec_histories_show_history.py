from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Histories_Show_History_V0_1_0 = CommandToolBuilder(tool="parsec_histories_show_history", base_command=["parsec", "histories", "show_history"], inputs=[ToolInput(tag="in_contents", input_type=Boolean(optional=True), prefix="--contents", doc=InputDocumentation(doc="When ``True``, instead of the history details, return a list\nwith info for all datasets in the given history. Note that\ninside each dataset info dict, the id which should be used\nfor further requests about this history dataset is given by\nthe value of the `id` (not `dataset_id`) key.")), ToolInput(tag="in_deleted", input_type=String(optional=True), prefix="--deleted", doc=InputDocumentation(doc="When ``contents=True``, whether to filter for the deleted\ndatasets (``True``) or for the non-deleted ones (``False``).\nIf not set, no filtering is applied.")), ToolInput(tag="in_visible", input_type=String(optional=True), prefix="--visible", doc=InputDocumentation(doc="When ``contents=True``, whether to filter for the visible\ndatasets (``True``) or for the hidden ones (``False``). If\nnot set, no filtering is applied.")), ToolInput(tag="in_details", input_type=String(optional=True), prefix="--details", doc=InputDocumentation(doc="When ``contents=True``, include dataset details. Set to\n'all' for the most information.")), ToolInput(tag="in_types", input_type=String(optional=True), prefix="--types", doc=InputDocumentation(doc="When ``contents=True``, filter for history content types. If\nset to ``['dataset']``, return only datasets. If set to\n``['dataset_collection']``, return only dataset collections.\nIf not set, no filtering is applied.")), ToolInput(tag="in_information_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Output:\ndetails of the given history or list of dataset info"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Show_History_V0_1_0().translate("wdl")

