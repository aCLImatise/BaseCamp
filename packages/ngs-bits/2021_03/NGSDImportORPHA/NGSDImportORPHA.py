from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ngsdimportorpha_V0_1_0 = CommandToolBuilder(tool="NGSDImportORPHA", base_command=["NGSDImportORPHA"], inputs=[ToolInput(tag="in_terms", input_type=File(optional=True), prefix="-terms", doc=InputDocumentation(doc="Terms XML file from 'http://www.orphadata.org/data/xml/en_product1.xml'.")), ToolInput(tag="in_genes", input_type=File(optional=True), prefix="-genes", doc=InputDocumentation(doc="Terms<>genes XML file from 'http://www.orphadata.org/data/xml/en_product6.xml'.")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="If set, overwrites old data.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdimportorpha_V0_1_0().translate("wdl")

