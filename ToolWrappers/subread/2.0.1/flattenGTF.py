from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Flattengtf_V0_1_0 = CommandToolBuilder(tool="flattenGTF", base_command=["flattenGTF"], inputs=[ToolInput(tag="in_name_annotation_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Name of an annotation file in GTF/GFF format.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file.")), ToolInput(tag="in_specify_feature_type", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Specify feature type in a GTF annotation. 'exon' by default.\nFeatures with the specified feature type are extracted from the\nannotation for processing.")), ToolInput(tag="in_specify_attribute_type", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="Specify attribute type in GTF annotation. 'gene_id' by default.\nThis attribute type is used to group features into meta-\nfeatures.")), ToolInput(tag="in_merging_overlapping_exons", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Merging overlapping exons into multiple non-overlapping exons but\nall the edges are kept.\n"))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flattengtf_V0_1_0().translate("wdl", allow_empty_container=True)

