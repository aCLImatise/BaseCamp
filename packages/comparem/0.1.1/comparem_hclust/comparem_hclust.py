from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Comparem_Hclust_V0_1_0 = CommandToolBuilder(tool="comparem_hclust", base_command=["comparem", "hclust"], inputs=[ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="clustering method to use. (default: average)")), ToolInput(tag="in_similarity", input_type=Boolean(optional=True), prefix="--similarity", doc=InputDocumentation(doc="indicates file contain similarity values")), ToolInput(tag="in_max_sim_value", input_type=Int(optional=True), prefix="--max_sim_value", doc=InputDocumentation(doc="maximum similarity value (default: 100)")), ToolInput(tag="in_name_col_one", input_type=Int(optional=True), prefix="--name_col1", doc=InputDocumentation(doc="index of first column with genome names (default: 0)")), ToolInput(tag="in_name_col_two", input_type=Int(optional=True), prefix="--name_col2", doc=InputDocumentation(doc="index of second column with genome names (default: 1)")), ToolInput(tag="in_value_col", input_type=Int(optional=True), prefix="--value_col", doc=InputDocumentation(doc="index of column with similarity or dissimilarity\nvalues (default: 2)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_pairwise_value_file", input_type=String(), position=0, doc=InputDocumentation(doc="file with pairwise similarity or dissimilarity values\nbetween genomes")), ToolInput(tag="in_output_tree", input_type=String(), position=1, doc=InputDocumentation(doc="name for output hierarchical cluster tree"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comparem_Hclust_V0_1_0().translate("wdl", allow_empty_container=True)

