from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Assembly_Hub_Constructor_Pl_V0_1_0 = CommandToolBuilder(tool="assembly_hub_constructor.pl", base_command=["assembly_hub_constructor.pl"], inputs=[ToolInput(tag="in_fa", input_type=Boolean(optional=True), prefix="--fa", doc=InputDocumentation(doc="Input file in Fasta format.")), ToolInput(tag="in_in_folder", input_type=Boolean(optional=True), prefix="--infolder", doc=InputDocumentation(doc="Directory which contains all track files in BED/bigBed format. The\nresulting Assembly Hub will contain these files in their respective\nbigFile version.")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Destination folder for the output Assembly Hub.")), ToolInput(tag="in_baseurl", input_type=Boolean(optional=True), prefix="--baseurl", doc=InputDocumentation(doc="BaseURL used within the Assembly Hub. This URL will be included\nverbatim in the resulting Assembly Hub. It is crucial that this URl\nis valid, else the resulting Assembly Hub will be broken.")), ToolInput(tag="in_bigwigs", input_type=Boolean(optional=True), prefix="--bigwigs", doc=InputDocumentation(doc="URLs pointing to big wig files to be included in the trackhub.\nMultiple URLs are separated by the star character #. It is possible\nto create a multiwig container by providing 2 URLs instead of one\nseparated by comma character ,. E.g.\nhttp://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw\nyields a multi big wig container displaying bar as positive reads in\ngreen and bar2 as negative 3 red colored reads in the same track and\nadditionally bar3 in an own track colored blue.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits.\n")), ToolInput(tag="in_url", input_type=Boolean(optional=True), prefix="-URL", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Destination folder for the output Assembly Hub."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Hub_Constructor_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

