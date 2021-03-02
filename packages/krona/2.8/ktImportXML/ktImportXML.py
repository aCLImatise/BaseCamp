from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportxml_V0_1_0 = CommandToolBuilder(tool="ktImportXML", base_command=["ktImportXML"], inputs=[ToolInput(tag="in_xml_file", input_type=String(), position=0, doc=InputDocumentation(doc="A file containing XML tags that specify chart attributes and\ndescribe the node hierarchy. An XML header is not necessary. For a\ncomplete description of XML tags, see:\nhttps://sourceforge.net/p/krona/wiki/KronaTools/\n_________"))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportxml_V0_1_0().translate("wdl")

