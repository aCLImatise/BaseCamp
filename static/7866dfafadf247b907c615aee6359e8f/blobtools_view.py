from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Blobtools_View_V0_1_0 = CommandToolBuilder(tool="blobtools_view", base_command=["blobtools", "view"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="BlobDB file (created with 'blobtools create')")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="--list", doc=InputDocumentation(doc="List of sequence names (file).")), ToolInput(tag="in_tax_rule", input_type=String(optional=True), prefix="--taxrule", doc=InputDocumentation(doc="Taxrule used for computing taxonomy\n(supported: 'bestsum', 'bestsumorder')\n[default: bestsum]")), ToolInput(tag="in_rank", input_type=String(optional=True), prefix="--rank", doc=InputDocumentation(doc="...     Taxonomic rank(s) at which output will be written.\n(supported: 'species', 'genus', 'family', 'order',\n'phylum', 'superkingdom', 'all') [default: phylum]")), ToolInput(tag="in_hits", input_type=Boolean(optional=True), prefix="--hits", doc=InputDocumentation(doc="Displays taxonomic hits from tax files\nthat contributed to the taxonomy.")), ToolInput(tag="in_concoct", input_type=Boolean(optional=True), prefix="--concoct", doc=InputDocumentation(doc="Generate concoct files [default: False]")), ToolInput(tag="in_cov", input_type=Boolean(optional=True), prefix="--cov", doc=InputDocumentation(doc="Generate cov files [default: False]")), ToolInput(tag="in_experimental", input_type=String(optional=True), prefix="--experimental", doc=InputDocumentation(doc="Experimental output [default: False]")), ToolInput(tag="in_notable", input_type=Boolean(optional=True), prefix="--notable", doc=InputDocumentation(doc="Do not generate table view [default: False]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blobtools_View_V0_1_0().translate("wdl", allow_empty_container=True)

