from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportrdp_V0_1_0 = CommandToolBuilder(tool="ktImportRDP", base_command=["ktImportRDP"], inputs=[ToolInput(tag="in_rdp_details", input_type=String(), position=0, doc=InputDocumentation(doc="RDP assignment details downloaded as text from the RDP\nClassifier web portal or output by the command line RDP\nClassifier or Multiclassifier. By default, separate datasets\nwill be created for each input (see [-c]).")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart (if\nmultiple input files are present and [-c] is not specified). By\ndefault, the basename of the file will be used.\n_________"))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportrdp_V0_1_0().translate("wdl")

