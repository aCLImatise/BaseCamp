from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Augur_Import_Beast_V0_1_0 = CommandToolBuilder(tool="augur_import_beast", base_command=["augur", "import", "beast"], inputs=[ToolInput(tag="in_mcc", input_type=String(optional=True), prefix="--mcc", doc=InputDocumentation(doc="BEAST MCC tree")), ToolInput(tag="in_most_recent_tip_date", input_type=String(optional=True), prefix="--most-recent-tip-date", doc=InputDocumentation(doc="Numeric date of most recent tip in tree (--tip-date-\nregex, --tip-date-format and --tip-date-delimeter are\nignored if this is set)")), ToolInput(tag="in_tip_date_regex", input_type=String(optional=True), prefix="--tip-date-regex", doc=InputDocumentation(doc="regex to extract dates from tip names")), ToolInput(tag="in_tip_date_format", input_type=String(optional=True), prefix="--tip-date-format", doc=InputDocumentation(doc="Format of date (if extracted by regex)")), ToolInput(tag="in_tip_date_deli_meter", input_type=String(optional=True), prefix="--tip-date-delimeter", doc=InputDocumentation(doc="delimeter used in tip-date-format. Used to match\npartial dates.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Display verbose output. Only useful for debugging.")), ToolInput(tag="in_recursion_limit", input_type=String(optional=True), prefix="--recursion-limit", doc=InputDocumentation(doc="Set a custom recursion limit (dangerous!)")), ToolInput(tag="in_output_tree", input_type=File(optional=True), prefix="--output-tree", doc=InputDocumentation(doc="file name to write tree to")), ToolInput(tag="in_file_name_write_lengths", input_type=File(optional=True), prefix="--output-node-data", doc=InputDocumentation(doc="file name to write (temporal) branch lengths & BEAST\ntraits as node data\n")), ToolInput(tag="in_optional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/augur:11.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Import_Beast_V0_1_0().translate("wdl")

