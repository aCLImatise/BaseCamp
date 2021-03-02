from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Gseapy_Biomart_V0_1_0 = CommandToolBuilder(tool="gseapy_biomart", base_command=["gseapy", "biomart"], inputs=[ToolInput(tag="in_value__filter", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="VALUE, --filter NAME VALUE\nWhich filter to use. Input filter name, and value. If\nmulti-value required, separate each value by comma. If\nvalue is a txt file, then one ID per row, exclude\nheader.")), ToolInput(tag="in_attributes", input_type=String(optional=True), prefix="--attributes", doc=InputDocumentation(doc="Which attribute(s) to retrieve. Separate each attr by\ncomma.")), ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="Output file name")), ToolInput(tag="in_dataset", input_type=String(optional=True), prefix="--dataset", doc=InputDocumentation(doc="Which dataset to use. Default: hsapiens_gene_ensembl")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="Which host to use. Select from {'www.ensembl.org',\n'asia.ensembl.org', 'useast.ensembl.org'}.")), ToolInput(tag="in_mart", input_type=String(optional=True), prefix="--mart", doc=InputDocumentation(doc="Which mart to use. Default: ENSEMBL_MART_ENSEMBL.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase output verbosity, print out progress of your\njob\n")), ToolInput(tag="in_value", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gseapy_Biomart_V0_1_0().translate("wdl", allow_empty_container=True)

