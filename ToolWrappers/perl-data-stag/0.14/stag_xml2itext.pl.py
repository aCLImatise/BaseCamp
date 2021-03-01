from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float

Stag_Xml2Itext_Pl_V0_1_0 = CommandToolBuilder(tool="stag_xml2itext.pl", base_command=["stag-xml2itext.pl"], inputs=[ToolInput(tag="in_help", input_type=Float(optional=True), prefix="-HELP", doc=InputDocumentation(doc="processed in rearrange(), did you use a\nnon-recognized parameter name ?  at /usr/local/lib/site_perl/5.26.2/Data/Stag/XMLParser.pm line 45."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Xml2Itext_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

