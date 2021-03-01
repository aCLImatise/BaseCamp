from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Siteprobw_V0_1_0 = CommandToolBuilder(tool="siteproBW", base_command=["siteproBW"], inputs=[ToolInput(tag="in_bw", input_type=File(optional=True), prefix="--bw", doc=InputDocumentation(doc="input bigWIG file. Multiple bigWIG files can be given\nvia -w (--bw) individually (eg -w WIG1.bw, -w\nWIG2.bw). WARNING! multiple bigwig and bed files are\nnot allowed.")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file of regions of interest. (eg, binding sites or\nmotif locations) Multiple BED files can be given via\n-b (--bed) individually (eg -b BED1.bed -b BED2.bed).\nWARNING! multiple wig and bed files are not allowed.")), ToolInput(tag="in_span", input_type=Int(optional=True), prefix="--span", doc=InputDocumentation(doc="Span from the center of each BED region in both\ndirections(+/-) (eg, [c - span, c + span], where c is\nthe center of a region), default:1000 bp")), ToolInput(tag="in_pf_res", input_type=Int(optional=True), prefix="--pf-res", doc=InputDocumentation(doc="Profiling resolution, default: 50 bp")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="If set, the direction (+/-) is considered in\nprofiling. If no strand info given in the BED, this\noption is ignored.")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="--dump", doc=InputDocumentation(doc="If set, profiles are dumped as a TXT file")), ToolInput(tag="in_confid", input_type=Boolean(optional=True), prefix="--confid", doc=InputDocumentation(doc="If set, it will draw 95% confidence interval for each")), ToolInput(tag="in_label", input_type=Int(optional=True), prefix="--label", doc=InputDocumentation(doc="Labels of the wig files. If given, they are used as\nthe legends of the plot and in naming the TXT files of\nprofile dumps; otherwise, the bigWIG file names will\nbe used as the labels. Multiple labels can be given\nvia -l (--label) individually (eg, -l LABEL1 -l\nLABEL2). WARNING! The number and order of the labels\nmust be the same as the bigWIG files.\n")), ToolInput(tag="in_step_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--name=NAME           Name of this run. If not given, the body of the bed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Siteprobw_V0_1_0().translate("wdl", allow_empty_container=True)

