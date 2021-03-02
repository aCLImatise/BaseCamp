from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bp_Generate_Histogram_Pl_V0_1_0 = CommandToolBuilder(tool="bp_generate_histogram.pl", base_command=["bp_generate_histogram.pl"], inputs=[ToolInput(tag="in_dsn", input_type=Boolean(optional=True), prefix="--dsn", doc=InputDocumentation(doc="<dsn>       Data source (default dbi:mysql:test)")), ToolInput(tag="in_adaptor", input_type=Boolean(optional=True), prefix="--adaptor", doc=InputDocumentation(doc="<adaptor>   Schema adaptor (default dbi::mysqlopt)")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="--user", doc=InputDocumentation(doc="<user>      Username for mysql authentication")), ToolInput(tag="in_pass", input_type=Boolean(optional=True), prefix="--pass", doc=InputDocumentation(doc="<password>  Password for mysql authentication")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="--bin", doc=InputDocumentation(doc="<bp>        Bin size in base pairs.")), ToolInput(tag="in_aggregator", input_type=String(optional=True), prefix="--aggregator", doc=InputDocumentation(doc="Comma-separated list of aggregators")), ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="Sort the resulting list by type and bin")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="Merge features with same method but different sources"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Generate_Histogram_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

