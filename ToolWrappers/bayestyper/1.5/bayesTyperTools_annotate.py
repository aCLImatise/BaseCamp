from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float, Int

Bayestypertools_Annotate_V0_1_0 = CommandToolBuilder(tool="bayesTyperTools_annotate", base_command=["bayesTyperTools", "annotate"], inputs=[ToolInput(tag="in_arg_variant_file", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --variant-file ] arg             variant file (vcf format).")), ToolInput(tag="in_arg_annotation_file", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --annotation-file ] arg          annotation file (vcf format).")), ToolInput(tag="in_arg_output_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-prefix ] arg            output prefix.")), ToolInput(tag="in_compress_output_files", input_type=File(optional=True), prefix="-z", doc=InputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.")), ToolInput(tag="in_clear_previous_annotations", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --clear-prev-annotation ] [=arg(=1)] (=0)\nclear previous annotations (variant id and AAI).")), ToolInput(tag="in_match_threshold", input_type=Float(optional=True), prefix="--match-threshold", doc=InputDocumentation(doc="(=0.5)          minimum sequence overlap between input allele and annotation allele.")), ToolInput(tag="in_window_size_scale", input_type=Int(optional=True), prefix="--window-size-scale", doc=InputDocumentation(doc="(=3)          window size allele length scaling factor."))], outputs=[ToolOutput(tag="out_compress_output_files", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compress_output_files", type_hint=File()), doc=OutputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bayestypertools_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

