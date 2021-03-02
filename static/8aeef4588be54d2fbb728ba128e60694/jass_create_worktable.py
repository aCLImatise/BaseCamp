from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Jass_Create_Worktable_V0_1_0 = CommandToolBuilder(tool="jass_create_worktable", base_command=["jass", "create-worktable"], inputs=[ToolInput(tag="in_in_it_table_path", input_type=File(optional=True), prefix="--init-table-path", doc=InputDocumentation(doc="path to the initial data table, default is the\nconfigured path (JASS_DATA_DIR/initTable.hdf5)")), ToolInput(tag="in_phenotypes", input_type=Array(t=String(), optional=True), prefix="--phenotypes", doc=InputDocumentation(doc="list of selected phenotypes")), ToolInput(tag="in_work_table_path", input_type=File(optional=True), prefix="--worktable-path", doc=InputDocumentation(doc="path to the worktable file to generate")), ToolInput(tag="in_significance_treshold", input_type=String(optional=True), prefix="--significance-treshold", doc=InputDocumentation(doc="threshold at which a p-value is considered significant")), ToolInput(tag="in_post_filtering", input_type=String(optional=True), prefix="--post-filtering", doc=InputDocumentation(doc="If a filtering to remove outlier will be applied (in\nthis case the result of SNPs considered aberant will\nnot appear in the worktable)")), ToolInput(tag="in_custom_loadings", input_type=File(optional=True), prefix="--custom-loadings", doc=InputDocumentation(doc="path toward a csv file containing custom loading for\nsumZ tests"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jass_Create_Worktable_V0_1_0().translate("wdl", allow_empty_container=True)

