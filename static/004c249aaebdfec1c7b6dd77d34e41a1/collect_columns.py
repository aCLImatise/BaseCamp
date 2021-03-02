from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Collect_Columns_V0_1_0 = CommandToolBuilder(tool="collect_columns", base_command=["collect-columns"], inputs=[ToolInput(tag="in_feature_column", input_type=Int(optional=True), prefix="--feature-column", doc=InputDocumentation(doc="The position of the column with the (unique) feature\nids. Default to 0.")), ToolInput(tag="in_value_column", input_type=Int(optional=True), prefix="--value-column", doc=InputDocumentation(doc="The position of the column with the values of\ninterest. Defaults to 1.")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="The separator used in the tables. This will also be\nused in the output table. Defaults to a tab.")), ToolInput(tag="in_names_corresponding_order", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[NAME [NAME ...]], --names [NAME [NAME ...]]\nThe names of the samples corresponding to the tables\n(in the same order as the tables). These will be used\nas headers in the merged table. If not specified the\nbasenames of tables will be used.")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Whether or not the tables have a header. Defaults to")), ToolInput(tag="in_feature_attribute", input_type=String(optional=True), prefix="--feature-attribute", doc=InputDocumentation(doc="The attribute from the GTF/GFF used for matching the\nfeature records with the rows in the table. Ignored if\n-a is not specified. Defaults to 'gene_id'.\n")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="The path the output will be written to.")), ToolInput(tag="in_table", input_type=String(), position=1, doc=InputDocumentation(doc="The tables to be merged.")), ToolInput(tag="in_false_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-a ATTR [ATTR ...], --additional-attributes ATTR [ATTR ...]")), ToolInput(tag="in_specified_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-g FILE, --gtf FILE, --gff FILE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collect_Columns_V0_1_0().translate("wdl", allow_empty_container=True)

