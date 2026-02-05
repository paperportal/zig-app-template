const std = @import("std");
const sdk = @import("paper_portal_sdk");

pub fn build(b: *std.Build) void {
    const app = sdk.addPortalApp(b, .{ .local_sdk_path = "../zig-sdk", .export_symbol_names = &.{} });

    _ = sdk.addPortalPackage(b, app.exe, .{
        .manifest = .{
            .id = "00000000-0000-0000-0000-000000000000",
            .name = "Zig App Template",
            .version = "0.0.0",
        },
    });
}
