from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Float, Boolean

Chips_Learn_V0_1_0 = CommandToolBuilder(tool="chips_learn", base_command=["chips", "learn"], inputs=[ToolInput(tag="in_bam_file_chip", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc=":     BAM file with ChIP reads (.bai index required)")), ToolInput(tag="in_bed_file_peak", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc=":     BED file with peak regions (Homer format or BED format)")), ToolInput(tag="in_file_type_supported", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc=": File type of the input peak file. Only `homer` or `bed` supported.")), ToolInput(tag="in_prefix_output_files", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=":     Prefix for output files")), ToolInput(tag="in_index_bed_file", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=":           The index of the BED file column used to score each peak (index starting from 1)")), ToolInput(tag="in_ratio_high_score", input_type=Float(optional=True), prefix="-r", doc=InputDocumentation(doc=":         Ratio of high score peaks to ignore\nDefault: 0")), ToolInput(tag="in_est", input_type=Int(optional=True), prefix="--est", doc=InputDocumentation(doc=":        Estimated fragment length\nDefault: 200")), ToolInput(tag="in_no_scale", input_type=Boolean(optional=True), prefix="--noscale", doc=InputDocumentation(doc=":          Don't scale peak scores by the max score.")), ToolInput(tag="in_scale_outliers", input_type=Boolean(optional=True), prefix="--scale-outliers", doc=InputDocumentation(doc=":   Set all peaks with scores >2*median score to have binding prob 1. Recommended with real data")), ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc=":           Loading paired-end reads\nDefault: false")), ToolInput(tag="in_th_res", input_type=Float(optional=True), prefix="--thres", doc=InputDocumentation(doc=":    Threshold for peak scores in single-end read length estimation\nDefault: 100"))], outputs=[], container="quay.io/biocontainers/chips:2.3--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chips_Learn_V0_1_0().translate("wdl")

