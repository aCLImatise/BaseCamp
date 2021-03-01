from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Sitepro_V0_1_0 = CommandToolBuilder(tool="sitepro", base_command=["sitepro"], inputs=[ToolInput(tag="in_wig", input_type=File(optional=True), prefix="--wig", doc=InputDocumentation(doc="input WIG file. WARNING: both fixedStep and\nvariableStep WIG formats are accepted. Multiple WIG\nfiles can be given via -w (--wig) individually (eg -w\nWIG1.wig, -w WIG2.wig). WARNING! multiple wig and bed\nfiles are not allowed.")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file of regions of interest. (eg, binding sites or\nmotif locations) Multiple BED files can be given via\n-b (--bed) individually (eg -b BED1.bed -b BED2.bed).\nWARNING! multiple wig and bed files are not allowed.")), ToolInput(tag="in_span", input_type=Int(optional=True), prefix="--span", doc=InputDocumentation(doc="Span from the center of each BED region in both\ndirections(+/-) (eg, [c - span, c + span], where c is\nthe center of a region), default:1000 bp")), ToolInput(tag="in_pf_res", input_type=Int(optional=True), prefix="--pf-res", doc=InputDocumentation(doc="Profiling resolution, default: 50 bp")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="If set, the direction (+/-) is considered in\nprofiling. If no strand info given in the BED, this\noption is ignored.")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="--dump", doc=InputDocumentation(doc="If set, profiles are dumped as a TXT file")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of this run. If not given, the body of the bed\nfile name will be used,")), ToolInput(tag="in_label", input_type=Int(optional=True), prefix="--label", doc=InputDocumentation(doc="Labels of the wig files. If given, they are used as\nthe legends of the plot and in naming the TXT files of\nprofile dumps; otherwise, the WIG file names will be\nused as the labels. Multiple labels can be given via\n-l (--label) individually (eg, -l LABEL1 -l LABEL2).\nWARNING! The number and order of the labels must be\nthe same as the WIG files.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sitepro_V0_1_0().translate("wdl", allow_empty_container=True)

