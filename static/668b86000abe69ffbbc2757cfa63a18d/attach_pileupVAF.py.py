from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Attach_Pileupvaf_Py_V0_1_0 = CommandToolBuilder(tool="attach_pileupVAF.py", base_command=["attach_pileupVAF.py"], inputs=[ToolInput(tag="in_my_vcf_file", input_type=File(optional=True), prefix="--my-vcf-file", doc=InputDocumentation(doc="My VCF (default: None)")), ToolInput(tag="in_normal_sample_name", input_type=String(optional=True), prefix="--normal-sample-name", doc=InputDocumentation(doc="Normal Sample Name (default: NORMAL)")), ToolInput(tag="in_tumor_sample_name", input_type=String(optional=True), prefix="--tumor-sample-name", doc=InputDocumentation(doc="Tumor Sample Name (default: TUMOR)")), ToolInput(tag="in_normal_pile_up_file", input_type=File(optional=True), prefix="--normal-pileup-file", doc=InputDocumentation(doc="Normal VCF File (default: None)")), ToolInput(tag="in_tumor_pile_up_file", input_type=File(optional=True), prefix="--tumor-pileup-file", doc=InputDocumentation(doc="Tumor VCF File (default: None)")), ToolInput(tag="in_reference_fast_a_fai", input_type=File(optional=True), prefix="--reference-fasta-fai", doc=InputDocumentation(doc="Use the fasta.fai file to get the valid contigs\n(default: None)")), ToolInput(tag="in_reference_fast_a_dict", input_type=File(optional=True), prefix="--reference-fasta-dict", doc=InputDocumentation(doc="Use the reference dict file to get the valid contigs\n(default: None)")), ToolInput(tag="in_pile_up_variant_allele_frequency", input_type=Boolean(optional=True), prefix="--pileup-variant-allele-frequency", doc=InputDocumentation(doc="Variant Allele Frequency calculated from pileup file\n(default: False)")), ToolInput(tag="in_pile_up_dp_four", input_type=Boolean(optional=True), prefix="--pileup-DP4", doc=InputDocumentation(doc="DP4 from pileup file (default: False)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output File Name (default: None)\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output File Name (default: None)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Attach_Pileupvaf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

