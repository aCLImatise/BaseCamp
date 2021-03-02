from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Otu_To_Tax_Name_Py_V0_1_0 = CommandToolBuilder(tool="otu_to_tax_name.py", base_command=["otu_to_tax_name.py"], inputs=[ToolInput(tag="in_otu_table", input_type=File(optional=True), prefix="--otu_table", doc=InputDocumentation(doc="Input biom file format OTU table. [REQUIRED]")), ToolInput(tag="in_otu_id_fp", input_type=File(optional=True), prefix="--otu_id_fp", doc=InputDocumentation(doc="A single or multi-column (tab-separated) file\ncontaining the OTU IDs to be converted in the first\ncolumn. [REQUIRED]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="For a list input, a new file containing a list of OTU\nIDs and their corresponding short taxonomic\nidentifiers separated by tabs. For a BIOM file input,\na new mapping file with all the OTU IDs replaced by\nthe short identifier.[REQUIRED]")), ToolInput(tag="in_reverse_lookup", input_type=Boolean(optional=True), prefix="--reverse_lookup", doc=InputDocumentation(doc="Get OTUIDs from genus-species OTU name."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Otu_To_Tax_Name_Py_V0_1_0().translate("wdl", allow_empty_container=True)

