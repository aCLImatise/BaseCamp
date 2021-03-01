from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Convertsegfilestopdf_V0_1_0 = CommandToolBuilder(tool="convertsegfilestopdf", base_command=["convertsegfilestopdf"], inputs=[ToolInput(tag="in_where", input_type=String(), position=0, doc=InputDocumentation(doc="pagedir:  input directory for image files\npagesubstr:  Use 'allfiles' to convert all files\nin the directory\nmaskdir:  input directory for mask files;\nuse 'skip' to skip\nmasksubstr:  Use 'allfiles' to convert all files\nin the directory; 'skip' to skip\nres:  Input resolution of each image;\nassumed to all be the same\ntype: compression used for non-image regions:\n0: default (G4 encoding)\n1: JPEG encoding\n2: G4 encoding\n3: PNG encoding\nthresh:  threshold for binarization; use 0 for default\nboxaafile: Optional file of 'image' regions within\neach page.  This contains a boxa for each\npage, consisting of a set of regions.\nUse 'skip' to skip.\nscalefactor:  Use to scale down the image regions\ntitle:  Use 'none' to omit\nfileout:  Output pdf file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertsegfilestopdf_V0_1_0().translate("wdl", allow_empty_container=True)

