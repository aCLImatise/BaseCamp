from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File

Chakin_Feature_Load_Go_V0_1_0 = CommandToolBuilder(tool="chakin_feature_load_go", base_command=["chakin", "feature", "load_go"], inputs=[ToolInput(tag="in_query_type", input_type=String(optional=True), prefix="--query_type", doc=InputDocumentation(doc="The feature type (e.g. 'gene', 'mRNA', 'polypeptide',\n'contig') of the query. It must be a valid Sequence\nOntology term.  [default: polypeptide]")), ToolInput(tag="in_match_on_name", input_type=Boolean(optional=True), prefix="--match_on_name", doc=InputDocumentation(doc="Match features using their name instead of their")), ToolInput(tag="in_go_column", input_type=Int(optional=True), prefix="--go_column", doc=InputDocumentation(doc="Column containing the GO id (default=5).  [default:\n5]")), ToolInput(tag="in_re_name", input_type=File(optional=True), prefix="--re_name", doc=InputDocumentation(doc="Regular expression to extract the feature name from\nthe input file (first capturing group will be used).")), ToolInput(tag="in_skip_missing", input_type=Boolean(optional=True), prefix="--skip_missing", doc=InputDocumentation(doc="Skip lines with unknown features or GO id instead of\naborting everything.")), ToolInput(tag="in_unique_name", input_type=String(), position=0, doc=InputDocumentation(doc="--name_column INTEGER  Column containing the feature identifiers (2, 3, 10"))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Feature_Load_Go_V0_1_0().translate("wdl")

