from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, File, String

Tutorial_Pipeline03_Pl_V0_1_0 = CommandToolBuilder(tool="Tutorial_pipeline03.pl", base_command=["Tutorial_pipeline03.pl"], inputs=[ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Destination folder for the output Track Hub.")), ToolInput(tag="in_baseurl", input_type=Boolean(optional=True), prefix="--baseurl", doc=InputDocumentation(doc="BaseURL used within the Track Hub. This URL will be included\nverbatim in the resulting Track Hub. It is crucial that this URl is\nvalid, else the resulting Track Hub will be broken.")), ToolInput(tag="in_big_beds", input_type=Boolean(optional=True), prefix="--bigbeds", doc=InputDocumentation(doc="URLs pointing to big bed files to be included in the trackhub.\nMultiple URLs are separated by the character #.")), ToolInput(tag="in_bigwigs", input_type=Boolean(optional=True), prefix="--bigwigs", doc=InputDocumentation(doc="URLs pointing to big wig files to be included in the trackhub.\nMultiple URLs are separated by the character #. It is possible to\ncreate a multiwig container by providing 2 URLs instead of one\nseparated by comma character ,. E.g.\nhttp://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw\nyields a multi big wig container displaying bar as positive reads in\ngreen and bar2 as negative 3 red colored reads in the same track and\nadditionally bar3 in an own track colored blue.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_url", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Destination folder for the output Track Hub."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tutorial_Pipeline03_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

