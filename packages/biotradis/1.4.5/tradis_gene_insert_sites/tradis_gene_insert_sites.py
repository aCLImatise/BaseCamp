from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tradis_Gene_Insert_Sites_V0_1_0 = CommandToolBuilder(tool="tradis_gene_insert_sites", base_command=["tradis_gene_insert_sites"], inputs=[ToolInput(tag="in_trim_five", input_type=Boolean(optional=True), prefix="-trim5", doc=InputDocumentation(doc="<trim insertion sites from 5' end of gene (optional, default = 0)>")), ToolInput(tag="in_trim_three", input_type=Boolean(optional=True), prefix="-trim3", doc=InputDocumentation(doc="<trim insertion sites from 3' end of gene (optional, default = 0)>")), ToolInput(tag="in_joinedoutput_output_file", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="|joined_output     <output a single file with all info. default = one file per input file>")), ToolInput(tag="in_trad_is_gene_insert_sites", input_type=String(), position=0, doc=InputDocumentation(doc="-o|output_suffix     <suffix to add to output files (optional, default = tradis_gene_insert_sites.csv)>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tradis_Gene_Insert_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

