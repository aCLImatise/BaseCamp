from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Create_Snp_List_Py_V0_1_0 = CommandToolBuilder(tool="create_snp_list.py", base_command=["create_snp_list.py"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force processing even when result file already exists\nand is newer than inputs (default: False)")), ToolInput(tag="in_vcf_name", input_type=File(optional=True), prefix="--vcfname", doc=InputDocumentation(doc="File name of the VCF files which must exist in each of\nthe sample directories (default: var.flt.vcf)")), ToolInput(tag="in_max_snps", input_type=Int(optional=True), prefix="--maxsnps", doc=InputDocumentation(doc="Exclude samples having more than this maximum allowed\nnumber of SNPs. Set to -1 to disable this function.\n(default: -1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file. Relative or absolute path to the SNP list\nfile (default: snplist.txt)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)")), ToolInput(tag="in_sample_dirs_file", input_type=String(), position=0, doc=InputDocumentation(doc="Relative or absolute path to file containing a list of\ndirectories -- one per sample")), ToolInput(tag="in_filtered_sample_dirs_file", input_type=String(), position=1, doc=InputDocumentation(doc="Relative or absolute path to the output file that will\nbe created containing the filtered list of sample\ndirectories -- one per sample. The samples in this\nfile are those without an excessive number of snps.\nSee the --maxsnps parameter."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file. Relative or absolute path to the SNP list\nfile (default: snplist.txt)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Snp_List_Py_V0_1_0().translate("wdl", allow_empty_container=True)

