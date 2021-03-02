from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimporttext_V0_1_0 = CommandToolBuilder(tool="ktImportText", base_command=["ktImportText"], inputs=[ToolInput(tag="in_text", input_type=String(), position=0, doc=InputDocumentation(doc="Tab-delimited text file. Each line should be a number followed by a\nlist of wedges to contribute to (starting from the highest level). If\nno wedges are listed (and just a quantity is given), it will\ncontribute to the top level. If the same lineage is listed more than\nonce, the values will be added. Quantities can be omitted if -q is\nspecified. Lines beginning with '#' will be ignored. By default,\nseparate datasets will be created for each input (see [-c]).")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart (if\nmultiple input files are present and [-c] is not specified). By\ndefault, the basename of the file will be used.\n_________"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimporttext_V0_1_0().translate("wdl", allow_empty_container=True)

