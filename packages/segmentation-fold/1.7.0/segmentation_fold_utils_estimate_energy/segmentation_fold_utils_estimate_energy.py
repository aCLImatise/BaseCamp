from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Segmentation_Fold_Utils_Estimate_Energy_V0_1_0 = CommandToolBuilder(tool="segmentation_fold_utils_estimate_energy", base_command=["segmentation-fold-utils", "estimate-energy"], inputs=[ToolInput(tag="in_temp_dir", input_type=File(optional=True), prefix="--temp-dir", doc=InputDocumentation(doc="Ppath in which temporary conifig files will\nbe stored (default: /tmp)")), ToolInput(tag="in_location_segmentatiofold_segmentationfold", input_type=String(optional=True), prefix="--segmentation-fold", doc=InputDocumentation(doc="Location of segmentatio-fold binary\n(default: segmentation-fold)")), ToolInput(tag="in_xml_file", input_type=File(optional=True), prefix="--xml-file", doc=InputDocumentation(doc="Location of segments.xml (default:\n/usr/local/share/segmentation-\nfold/segments.xml)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads per spawned instance of")), ToolInput(tag="in_randomize", input_type=Int(optional=True), prefix="--randomize", doc=InputDocumentation(doc="Shuffle each sequence this many times and\npredict energy of shuffled sequence(s)\n(default: 0, 0 means disabled)")), ToolInput(tag="in_sequences_from_fast_a_file", input_type=File(optional=True), prefix="--sequences-from-fasta-file", doc=InputDocumentation(doc="Use sequences from a FASTA file instead of\nusing the XML file that also contains the\nsegments. In XML files you can explicitly\nlink one Segment(Loop) to one particular\nsequence instead of doing n*n comparisons\n(default: None)")), ToolInput(tag="in_precision_float_minimal", input_type=String(), position=0, doc=InputDocumentation(doc="-p, --precision FLOAT           Minimal difference for binary split - the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmentation_Fold_Utils_Estimate_Energy_V0_1_0().translate("wdl", allow_empty_container=True)

